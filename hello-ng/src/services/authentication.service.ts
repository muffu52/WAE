import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';
import { HttpClient } from '@angular/common/http';

@Injectable({ providedIn: 'root' })

export class AuthenticationService {
    constructor(
        private http: HttpClient
    ) { }
    login(username, password) {
        const subject = this.http.post<any>('http://apihost.com/api/login', { username, password });
        return subject
            .pipe(map(user => {
                return user;
            }));
    }
}