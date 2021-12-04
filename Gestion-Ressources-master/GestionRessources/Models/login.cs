using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionRessources.Models
{
    public class login
    {
        String username;
        String password;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
    }
}