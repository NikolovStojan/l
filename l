#include <iostream>
#include <string.h>
using namespace std;

class Film{
private:
    char ime[50];
    char reziser[50];
    char zanr[50];
    int godina;
public:
    Film(){
}
    Film(char * _ime, char * _reziser, char * _zanr, int _godina){
    strcpy(ime,_ime);
    strcpy(reziser,_reziser);
    strcpy(zanr,_zanr);
    godina=_godina;
    }
    void print(){
    cout<<"Ime: "<<ime<<endl<<"Reziser: "<<reziser<<endl<<"Zanr: "<<zanr<<endl<<"Godina: "<<godina<<endl;
    }
    void setIme(char _ime[50]){
        strcpy(ime,_ime);
    }
    void setReziser(char _reziser[50]){
        strcpy(reziser,_reziser);
    }
    void setZanr(char _zanr[50]){
        strcpy(zanr,_zanr);
    }
    void setGodina(int _godina){
        godina=_godina;
    }
    int getGodina(){
    return godina;
    }

};
void pecati_po_godina(Film *f1, int n, int Godina)
{
    for(int i=0;i<n;i++){
    if(f1[i].getGodina()==Godina)
    f1[i].print();

    }
}

int main()
{
    int n;
    cin>>n;
    Film f1[n];
    char ime[50];
    char reziser[50];
    char zanr[50];
    int godina;
    int godina1;
    for(int i=0;i<n;i++){
    cin>>ime>>reziser>>zanr>>godina;
    f1[i].setIme(ime);
    f1[i].setReziser(reziser);
    f1[i].setZanr(zanr);
    f1[i].setGodina(godina);
    }
    
    cin>>godina1;
    pecati_po_godina(f1,n,godina1);

    return 0;
}
