// MyNavbar.tsx
import React from 'react';
import { Navbar, Nav, Container } from 'react-bootstrap';

const MyNavbar: React.FC = () => {
    return (
        <Navbar bg="dark" variant="dark" expand="lg" sticky="top">
            <Container>
                <Navbar.Brand href="#home">Genetic Algorithm Partitioning</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav" />
                <Navbar.Collapse id="basic-navbar-nav">

                </Navbar.Collapse>
            </Container>
        </Navbar>
    );
};

export default MyNavbar;
