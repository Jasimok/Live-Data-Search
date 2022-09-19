<?php include 'config/config.php'; ?>
<?php 
    class Database {
        public $host = DB_HOST;
        public $user = DB_USER;
        public $dbname = DB_NAME;
        public $pass = DB_PASS;
        public $link;
        public $error;

        function __construct() {
            $this->db_connection();
        }
        private function db_connection() {
            $this->link = new mysqli($this->host,$this->user,$this->pass,$this->dbname);
            if ( !$this->link ) {
                $this->error = "Connection Error".$this->link->connect_error;
                return false;
            }
        }
        
        public function select($query)
        {
            $result = $this->link->query($query) or die($this->link->error.__LINE__);
            if ( $result->num_rows > 0 ) {
                return $result;
            }
            else {
                return false;
            }
        }
    }