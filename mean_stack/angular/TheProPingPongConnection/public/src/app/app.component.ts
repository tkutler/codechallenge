import { Component, OnInit } from '@angular/core';
import { HttpService } from './http.service';
import { ActivatedRoute, Params, Router } from '@angular/router';
import { JwtModule } from '@auth0/angular-jwt';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  {
  title = 'app';
  constructor(private _httpService: HttpService,     private _route: ActivatedRoute,
    private _router: Router){}
  
  
  ngOnInit() {
    
  }
    
} 

  


