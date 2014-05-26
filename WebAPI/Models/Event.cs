﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL = WhiskyClub.DataAccess.Models;

namespace WhiskyClub.WebAPI.Models
{
    public class Event
    {
        public int EventId { get; set; }

        public string Description { get; set; }

        public DateTime HostedDate { get; set; }

        public Host Host { get; set; }
    }
}