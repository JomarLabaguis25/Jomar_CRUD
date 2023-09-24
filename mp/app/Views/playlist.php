<!DOCTYPE html>
<html>
<head>
    <title>Playlist Selector</title>
    <style>
        body{
            background-color:gray;
        }
        /* Basic CSS styling for the table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color:azure;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Styling for selected rows */
        .selected {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
    <h1>Choose a Playlist</h1>

    <!-- Create a table to display playlists -->
    <table id="playlistTable">
        <thead>
            <tr>
                <th>Playlist Name</th>
                <th>Choose</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Playlist 1</td>
                <td><button onclick="choosePlaylist('Playlist 1')">Select</button></td>
            </tr>
            <tr>
                <td>Playlist 2</td>
                <td><button onclick="choosePlaylist('Playlist 2')">Select</button></td>
            </tr>
            <tr>
                <td>Playlist 3</td>
                <td><button onclick="choosePlaylist('Playlist 3')">Select</button></td>
            </tr>
        </tbody>
    </table>
    <!-- CRUD operations for adding new playlists 
    <h2>Add New Playlist</h2>
    <form id="playlistForm">
        <label for="playlistName">Playlist Name:</label>
        <input type="text" id="playlistName" required>
        <button type="button" onclick="addPlaylist()">Add Playlist</button>
    </form>

    <script src="scripts.js"></script>
    <p>Selected Playlist: <span id="selectedPlaylist">None</span></p>-->

    <script>
        function choosePlaylist(playlistName) {
            // Remove 'selected' class from all table rows
            const tableRows = document.querySelectorAll("#playlistTable tbody tr");
            tableRows.forEach(row => {
                row.classList.remove("selected");
            });

            // Add 'selected' class to the chosen row
            const chosenRow = document.querySelector(#playlistTable tbody tr td:contains('${playlistName}'));
            chosenRow.parentNode.classList.add("selected");

            // Update the selected playlist text
            document.getElementById('selectedPlaylist').textContent = playlistName;
        }

        // Custom :contains() jQuery-like selector function
        Element.prototype.matches = Element.prototype.matches || 
            Element.prototype.msMatchesSelector || 
            Element.prototype.webkitMatchesSelector;

        Element.prototype.closest = Element.prototype.closest || function (selector) {
            var el = this;
            while (el) {
                if (el.matches(selector)) {
                    return el;
                }
                el = el.parentElement;
            }
            return null;
        };
        
        Element.prototype.matches = Element.prototype.matches || Element.prototype.msMatchesSelector;

        Element.prototype.closest = Element.prototype.closest || function(selector) {
            var el = this;
            while (el) {
                if (el.matches(selector)) {
                    return el;
                }
                el = el.parentElement;
            }
            return null;
        };
    </script>
</body>
</html>