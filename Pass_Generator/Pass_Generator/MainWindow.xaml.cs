using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Text.RegularExpressions;

namespace Pass_Generator
{
    public partial class MainWindow : Window
    {
        enum e_Type
        {
            BASE = 1,
            CHIFFRE = 2,
            CHARACT = 3,
            TOUT = 4
        }

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnGenerate_Click(object sender, RoutedEventArgs e)
        {
            int longueur = int.Parse(tbNbChar.Text);
            int typePw = 1;

            if ((rbNumberYes.IsChecked == true) && (rbSpecYes.IsChecked == true))
            {
                typePw = 4;
            }
            else if (rbNumberYes.IsChecked == true)
            {
                typePw = 2;
            }
            else if (rbSpecYes.IsChecked == true)
            {
                typePw = 3;
            }

            tbPassword.Text = GeneratePassword(longueur, typePw);
        }

        private void tbNbChar_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private string GeneratePassword(int longueur, int type)
        {
            string minuscules = "abcdefghijklmnopqrstuvwxyz";
            string majuscules = minuscules.ToUpper();
            string chiffres = "1234567890";
            string caractereSpeciaux = "!?#&+-";
            string alphabet = "";

            switch (type)
            {
                case (int)e_Type.BASE:
                    alphabet = minuscules + majuscules;
                    break;
                case (int)e_Type.CHIFFRE:
                    alphabet = minuscules + majuscules + chiffres;
                    break;
                case (int)e_Type.CHARACT:
                    alphabet = minuscules + majuscules + caractereSpeciaux;
                    break;
                case (int)e_Type.TOUT:
                    alphabet = minuscules + majuscules + chiffres + caractereSpeciaux;
                    break;
            }

            Random rand = new Random();
            string motDePasse = "";
            for (int i = 0; i < longueur; i++)
            {
                int index = rand.Next(0, alphabet.Length);
                motDePasse += alphabet[index];
            }

            return motDePasse;
        }
    }
}

