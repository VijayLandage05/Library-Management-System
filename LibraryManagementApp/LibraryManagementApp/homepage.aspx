<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="LibraryManagementApp.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--For first image on static home page--%>
    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>

    <%--For 3 Primary Features div for 3 images and text--%>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 Primary Features</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/digital-inventory.png" />
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Digital book inventory can also be used to track important metadata about each book, such as the author, publisher, publication date, and ISBN. This information can be helpful for cataloging and organizing the books, as well as for searching and filtering the inventory.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Search Books</h4>
                        <p class="text-justify">When using search book functionality, users can enter keywords or phrases related to the book they are looking for, such as the title, author, or subject matter. The search engine then scans the book database for matches and returns a list of results that match the user's search criteria.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/defaulters-list.png" />
                        <h4>Defaulter List</h4>
                        <p class="text-justify">The defaulter list typically includes the user's name, library card number, the title of the overdue book, and the amount of the fine owed. Library staff can use the defaulter list to follow up with users who have overdue items or unpaid fines, reminding them to return the books or pay the fines.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <%--For 2nd long image--%>
    <section>
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
    </section>

    <%--For Simple 3 Step Process div for 3 images and text--%>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have a Simple 3 Step Process</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png" />
                        <h4>Sign Up</h4>
                        <p class="text-justify">The sign up process typically requires the user to provide some personal information, such as their name, address, and contact information, as well as proof of identity, such as a driver's license or passport. Once the user has completed the sign up process and been approved, they are given a library card, which grants them access to the library's resources and services.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Search Books</h4>
                        <p class="text-justify">When using search book functionality, users can enter keywords or phrases related to the book they are looking for, such as the title, author, or subject matter. The search engine then scans the book database for matches and returns a list of results that match the user's search criteria.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png" />
                        <h4>Visit Us</h4>
                        <p class="text-justify">It refers to the features that allow users to learn more about the online library and access its resources and services. This functionality is typically available through the library's website or mobile app.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
