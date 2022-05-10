


module "guardduty" {
  source = "./modules/gd"
  stage = var.stage


  gd-buckets = {
    
          

  }

  
  profile = var.profile
  tags =  var.tags
          
}






