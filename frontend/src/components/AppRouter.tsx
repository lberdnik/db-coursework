import React from 'react';
import {Routes, Route, Navigate} from 'react-router-dom'
import {privateRoutes, publicRoutes, RouteNames} from "../router";


const AppRouter = () => {
    const isAuth = true
    return (
            isAuth ?
            <Routes>
                {privateRoutes.map(route =>
                    <Route key={route.path} {...route}/>
                )}
                <Route path="*" element={<Navigate replace to={RouteNames.MAIN}/> } />
            </Routes>
            :
            <Routes>
                {publicRoutes.map(route =>
                    <Route key={route.path} {...route}/>
                )}
                <Route path="*" element={<Navigate replace to={RouteNames.AUTH}/>} />
            </Routes>
    );
};

export default AppRouter;