<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About Us</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-aboutus">
        <asp:Label CssClass="header-tittle" runat="server"> About Us </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container d-about">
        <h2> Who We Are </h2><hr>
        <p>
            TasteMe.com is here to help you cook delicious meals with less stress and more joy.
            We offer recipes and cooking advice for home cooks, by home cooks.
            Helping create “kitchen wins” is what we’re all about.
        </p>
        <p>
            TasteMe.com was founded in 2021 by Taha Talha PINARLI and Muzaffer VERDIL as a home cooking blog to record her favorite family recipes.
            Today, TasteMe.com has grown into a trusted resource for home cooks with recipes. 
            We’re supported by a diverse group of recipe developers, food writers, recipe and product testers, 
            photographers, and other creative professionals.
        </p>

        <h2> Recipe Development & Testing </h2><hr>
        <p>
            Our recipes primarily use fresh, unprocessed ingredients but we also believe there is a time and a place for canned, frozen, and other prepared ingredients.
            We believe in a diet that includes a wide variety of foods: real butter and cream, extra virgin olive oil, eggs, lots of fruits and vegetables, and protein from meat, fish, beans, and cheese. Plus cake for dessert.
        </p>
        <p> There are three things we think about when deciding if a recipe is good enough to go on Simply Recipes: </p>
        <p> First, does it work? Recipes need to be easy to follow and provide reliable results, every time. </p>
        <p> Second, is it delicious? Does the dish make us smile inside and out? Do we want to eat the whole batch by ourselves? </p>
        <p> Third, is it worth the effort? Do we want to make it again (and again and again)? </p>
        <p>
            To make sure each of these standards is met, we start by working with expert recipe developers — people with the experience and knowledge to not only develop a good recipe in their own kitchens, 
            but to make sure that recipe works in yours. Next, we thoroughly review and edit every recipe in-house line by line. 
            Finally, each new recipe is run by our team of recipe testers working in home kitchens with the same pots, pans, and tools that you use in yours. 
            Only after all this is the recipe shared on Simply Recipes.
        </p>
    </div>
    <div class="container d-team">       
        <h2>Our Team Members</h2><hr>      
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <figure>
                        <img alt="team member" class="img-fluid" src="../res/team/team1.png">
                        <figcaption>Developer, Founder</figcaption>
                    </figure>
                </div>
                <div class="col-lg-8">
                    <h4>Taha Talha PINARLI</h4>
                    <p>
                        &emsp; <strong>About</strong><br> &emsp; Taha Talha PINARLI grew up in Queens and Long Island, NY. He
                        received a BS in Biology from Cornell University in 1972 and an MA in neurobiology and animal
                        behavior from UCLA in 1973. He achieved his DVM degree from the University of Missouri in 1979. Dr.
                        Randell pursued an internship in small animal medicine and surgery followed by a residency in
                        internal medicine and neurology at the Animal Medical Center in New York City. At the AMC he was
                        also responsible for the care of exotic pets. After leaving the Animal Medical Center he was the
                        staff internist at County Animal Clinic in Yonkers, NY. In 1984 he joined Somers Animal Hospital,
                        soon becoming a partner. Dr. Randell achieved Diplomate status in the American College of Veterinary
                        Internal Medicine in 1985. As well as specializing in internal medicine, he has expertise in
                        gastrointestinal endoscopy and ultrasonography. He lives with his wife Kathy and has 3 grown
                        children. He shares his home with his animal companions of 2 dogs, 2 cats, and a small parrot. <br>&emsp;
                        <strong>Hobbies:</strong> adventure travel, hiking, skiing, and photography. <br>&emsp; <strong>Contact:</strong>
                        <a href="mailto:taha@mail.com"> taha@mail.com</a>
                    </p>
                    <br>
                </div>
                <hr class="section-hr padding">
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <figure>
                        <img alt="team member" class="img-fluid" src="../res/team/team2.png">
                        <figcaption>Developer, Founder</figcaption>
                    </figure>

                </div>
                <div class="col-lg-8">
                    <h4>Muzaffer VERDIL</h4>
                    <p>
                        &emsp; <strong>About</strong><br> &emsp; Muzaffer VERDIL a BA degree from the University of
                        Colorado at Boulder in 1992 and a DVM degree from Ross University in 2001. He spent one year at the
                        College of Veterinary Medicine at the University of Missouri, where he finished his clinical
                        training. He then joined the staff at Somers Animal Hospital becoming a partner in 2008. Dr. Walker
                        has achieved specialty board certification by the American Board of Veterinary Practitioners in
                        Canine and Feline practice. He is certified in physical rehabilitation and medical acupuncture, and
                        is credentialed in regenerative medicine. He has extensive training in diagnostic ultrasonography,
                        and soft tissue surgery including minimally invasive laparoscopy. He shares his home with his 3
                        dogs, 1 hedgehog, 3 fish, 5 Guinea Pigs and a hamster. <br>&emsp; <strong>Hobbies:</strong> walking,
                        swimming, reading. <br>&emsp; <strong>Contact:</strong> <a href="mailto:muzaffer@mail.com">muzaffer@mail.com</a>
                    </p>
                    <br>
                </div>
                <hr class="section-hr padding">
            </div>
        </div>
    </div>

</asp:Content>
