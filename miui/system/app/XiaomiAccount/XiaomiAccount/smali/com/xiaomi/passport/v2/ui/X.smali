.class final Lcom/xiaomi/passport/v2/ui/X;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/accountsdk/account/data/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

.field final synthetic Fl:Landroid/content/Context;

.field final synthetic Fm:Lcom/xiaomi/passport/v2/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Landroid/content/Context;Lcom/xiaomi/passport/v2/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/X;->Fl:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/X;->Fm:Lcom/xiaomi/passport/v2/ui/p;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs Lg([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/a;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/X;->Fl:Landroid/content/Context;

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    return-object v0
.end method

.method protected Lh(Lcom/xiaomi/accountsdk/account/data/a;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JD(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    new-instance v2, Lcom/xiaomi/passport/uicontroller/y;

    invoke-direct {v2}, Lcom/xiaomi/passport/uicontroller/y;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jw(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "passportapi"

    :goto_0
    new-instance v3, Lcom/xiaomi/passport/v2/ui/Y;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/X;->Fm:Lcom/xiaomi/passport/v2/ui/p;

    iget-object v5, p0, Lcom/xiaomi/passport/v2/ui/X;->Fl:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/xiaomi/passport/v2/ui/Y;-><init>(Lcom/xiaomi/passport/v2/ui/X;Lcom/xiaomi/passport/v2/ui/p;Landroid/content/Context;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/xiaomi/passport/uicontroller/y;->Nz(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/D;)Lcom/xiaomi/passport/uicontroller/v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jx(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/passport/uicontroller/v;)Lcom/xiaomi/passport/uicontroller/v;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/X;->Fk:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jw(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/X;->Lg([Ljava/lang/Void;)Lcom/xiaomi/accountsdk/account/data/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/v2/ui/X;->Lh(Lcom/xiaomi/accountsdk/account/data/a;)V

    return-void
.end method
