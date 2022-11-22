struct access_response {
    string access_token<>;
    string refresh_token<>;
    int ttl;
};

struct access_request {
    string id<>;
    string auth_token<>;
    int generate_refresh_token;
};

struct action {
    string op<>;
    string resource<>;
    string acces_token<>;
};


program TEMAPROG {
    version TEMAVERS {
        string REQUEST_AUTHORIZATION(string) = 1;
        access_response REQUEST_ACCES_TOKEN(access_request) = 2;
        string VALIDATE_DELEGATED_ACTION(action) = 3;
        string APPROVE_REQUEST_TOKEN(string) = 4;
    } = 1;
} = 0x32345678;