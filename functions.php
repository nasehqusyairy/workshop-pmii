<?php 

require_once 'config.php';

// get settings from database
function getSettings()  {

    global $db;

    $sql = "SELECT * FROM settings";
    $result = $db->query($sql);

    $result->setFetchMode(PDO::FETCH_ASSOC);
    $settings = $result->fetchAll();

    return $settings;
};

function insertSettings($settings) {
    global $db;
    $sql = "INSERT INTO settings (name, value) VALUES (:name, :value)";
    $stmt = $db->prepare($sql);
    $stmt->execute($settings);
}