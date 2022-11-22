
/* Structura folosita pentru a primi raspunsul de la procedura Request Access Token */
struct access_response {
    string access_token<>;
    string refresh_token<>;
    int ttl;
};

/* Structura folosita pentru a trimite parametri pentru procedura Request Access Token */
struct access_request {
    string id<>;
    string auth_token<>;
    int generate_refresh_token;
};

/* Structura folosita pentru a trimite parametri pentru procedura Validate Delegated Action */
struct action_request {
    string op<>;
    string resource<>;
    string acces_token<>;
};


program TEMAPROG {
    version TEMAVERS {
        string REQUEST_AUTHORIZATION(string) = 1;
        access_response REQUEST_ACCES_TOKEN(access_request) = 2;
        string VALIDATE_DELEGATED_ACTION(action_request) = 3;
        string APPROVE_REQUEST_TOKEN(string) = 4;
    } = 1;
} = 1;