﻿
using System;
using System.Runtime.Serialization;
<<<<<<< HEAD
using OfficeSoft.Data.Crud;
=======
using Trinity;
>>>>>>> origin/master

namespace OrderIt.Data.Models	
{
	public partial class ContactType : ModelBase
	{
		public  ContactType(){
              Initialize();
		}

                private string _Name;
                private Guid _Id;
        
	    		public string Name 
        {
            get
            {
               return _Name;
            } 
            set
            {
                if(_Name != value){
                    SendPropertyChanging("Name");  
                    _Name = value;
                    SendPropertyChanged("Name"); 
                }
            }
        }
	    		public Guid Id 
        {
            get
            {
               return _Id;
            } 
            set
            {
                if(_Id != value){
                    SendPropertyChanging("Id");  
                    _Id = value;
                    SendPropertyChanged("Id"); 
                }
            }
        }
	        }
}
