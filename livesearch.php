
<?php 
require_once 'helper/database.php';
$db = new Database();

        if ( isset( $_POST['sinput'] ) ) {
            $input = $_POST['sinput'];
            $query = "SELECT * FROM searchperson WHERE pname LIKE '{$input}%'";
            $select = $db->select($query);
            if ( $select ) { ?>
                <table>
                    <thead>
                        <th width="5%" >ID</th>
                        <th width="20%">Name</th>
                        <th width="15%">Age</th>
                        <th width="20%">Country</th>
                        <th width="20%">Email</th>
                        <th width="20%">Occupation</th>
                    </thead>
                    <tbody>
                        <?php 
                            while ( $data = $select->fetch_assoc() ) { 
                                    $i = 1;
                                ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $data['pname']; ?></td>
                                    <td><?php echo $data['age']; ?></td>
                                    <td><?php echo $data['country']; ?></td>
                                    <td><?php echo $data['email']; ?></td>
                                    <td><?php echo $data['occupation']; ?></td>
                                </tr>
                            <?php }
                        ?>
                    </tbody>
                </table>    
            <?php } else {
                echo "NO data found";
            }
        }
    
?>
