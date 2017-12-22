.class Lcom/xiaomi/account/ui/P;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private dU:Landroid/content/Context;

.field final synthetic dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/P;->dU:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/P;->hn([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs hn([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/y;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/passport/utils/y;->FZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ho(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/P;->dU:Landroid/content/Context;

    const v1, 0x7f0c0090

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/P;->dU:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hc(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/u;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hc(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "display"

    iget-object v4, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hh(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "appid"

    iget-object v4, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->ma()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "sid"

    iget-object v4, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->mb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/accountsdk/utils/m;->ahQ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/account/utils/q;->mu:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    const-string/jumbo v5, "&"

    invoke-static {v4, v1, v5}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hi(Lcom/xiaomi/account/ui/SnsWebViewActivity;Ljava/util/Map;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/account/ui/P;->dU:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeAllCookie()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passToken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hf(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/utils/v;->ait(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/y;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hf(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/utils/y;->aiy(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hf(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/utils/x;->aiw(Landroid/webkit/WebView;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/P;->dV:Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hf(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/P;->ho(Ljava/lang/String;)V

    return-void
.end method
