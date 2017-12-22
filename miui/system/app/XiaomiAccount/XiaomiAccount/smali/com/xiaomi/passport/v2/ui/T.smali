.class final Lcom/xiaomi/passport/v2/ui/T;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/accountsdk/account/data/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Fb:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

.field final synthetic Fc:Ljava/lang/String;

.field final synthetic Fd:Ljava/lang/String;

.field final synthetic Fe:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fb:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/T;->Fc:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/T;->Fd:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/T;->Fe:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs Le([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/e;
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/f;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fb:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jv(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;->password(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;->Wi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fb:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/T;->Fe:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jy(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;->Wf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v0

    const-string/jumbo v1, "passportapi"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;->Wh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/T;->Fe:Landroid/content/Context;

    const-string/jumbo v2, "passportapi"

    invoke-static {v1, v2}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/f;->Wg(Lcom/xiaomi/accountsdk/account/data/a;)Lcom/xiaomi/accountsdk/account/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/f;->build()Lcom/xiaomi/accountsdk/account/data/e;

    move-result-object v0

    return-object v0
.end method

.method protected Lf(Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/T;->Fb:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JB(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/T;->Le([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/e;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/T;->Lf(Lcom/xiaomi/accountsdk/account/data/e;)V

    return-void
.end method
