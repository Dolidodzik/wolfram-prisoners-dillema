%% histogram
% liczby pseudolosowe + histogram
% wykonal : Lech Dominik 

clear all; close all; clc;

% Ustawienia
liczbaProbek = 222;
losoweLiczby = randn(liczbaProbek, 2);

% Rysowanie histogramu
liczbaPrzedzialow = 15;

figure;
histogram(losoweLiczby, liczbaPrzedzialow);
title('Histogram liczb pseudolosowych');
xlabel('Wartość zmiennej losowej');
ylabel('Liczność');
grid on;

%% Funkcja i wykresy

clear; clc; format short g;

% Zakres i funkcje
zakresX = 0:0.005:8;
cosinus = cos(zakresX);
funkcja = @(w) 3 * w + cos(2 * w);

% Rysowanie wykresów
figure;
plot(zakresX, cosinus, 'r-', 'LineWidth', 1); hold on;
plot(zakresX, funkcja(zakresX), 'b--', 'LineWidth', 1);
grid on;
title('Wykresy funkcji');
xlabel('x');
ylabel('y');
legend('cos(x)', '3x + cos(2x)');
hold off;

%% Pętle warunkowe - tablica wyników

clear; clc; format short g;

% Tworzenie tabeli
liczbaKolumn = 30;
tabelaWynikow = zeros(2, liczbaKolumn);

for index = 1 : liczbaKolumn
    tabelaWynikow(1, index) = index;
    tabelaWynikow(2, index) = 3 * index;
end

% Wyświetlenie tabeli
disp('wyniki:');
disp(tabelaWynikow);

clear; clc;

% Inicjalizacja zmiennych
zmienna = 0;

disp('Wartości zmiennej spełniające warunek:');
while zmienna <= 30
    if zmienna >= 10 && zmienna <= 20
        disp(zmienna);
    end
    zmienna = zmienna + 3;
end