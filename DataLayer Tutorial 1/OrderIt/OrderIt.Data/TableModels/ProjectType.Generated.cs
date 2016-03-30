
using System;
using System.Runtime.Serialization;
using OfficeSoft.Data.Crud;

namespace OrderIt.Data.Models	
{
	public partial class ProjectType : ModelBase
	{
		public  ProjectType(){
              Initialize();
		}

                private Guid _Id;
                private string _Name;
        
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
	        }
}
