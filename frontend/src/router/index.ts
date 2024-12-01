import React from "react";
import AuthPage from "../pages/AuthPage";
import MainPage from "../pages/MainPage";
import PersonalPage from "../pages/PersonalPage";

export interface IRoute {
    path: string;
    element: React.ReactNode;
}

export enum RouteNames {
    AUTH = '/auth',
    MAIN = '/',
    PERSONAL = '/personal'
}

export const publicRoutes: IRoute[] = [
    {path: RouteNames.AUTH, element: AuthPage()}
]

export const privateRoutes: IRoute[] = [
    {path: RouteNames.MAIN, element: MainPage()},
    {path: RouteNames.PERSONAL, element: PersonalPage()}
]