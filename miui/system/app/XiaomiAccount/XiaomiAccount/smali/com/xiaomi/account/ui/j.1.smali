.class Lcom/xiaomi/account/ui/j;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/ui/i;",
        ">;"
    }
.end annotation


# instance fields
.field private W:Landroid/app/Activity;

.field final synthetic X:Lcom/xiaomi/account/ui/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/h;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/j;->X:Lcom/xiaomi/account/ui/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/xiaomi/account/ui/j;->W:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected varargs aN([Ljava/lang/Void;)Lcom/xiaomi/account/ui/i;
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/j;->W:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/j;->W:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FC(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v7

    :cond_1
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v3, "extra_micloud_status_info_quota"

    invoke-virtual {v2, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lmiui/cloud/a/a;

    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v6}, Lmiui/cloud/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lmiui/cloud/a/a;->aHe(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmiui/cloud/a/a;->aHd()Lmiui/cloud/a/b;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lmiui/cloud/a/b;->aHg()J

    move-result-wide v2

    invoke-virtual {v6}, Lmiui/cloud/a/b;->aHh()J

    move-result-wide v4

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/a/a;->aoX(Landroid/content/Context;)V

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/a;->apS(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/a/d;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/xiaomi/account/ui/i;

    iget-object v1, p0, Lcom/xiaomi/account/ui/j;->X:Lcom/xiaomi/account/ui/h;

    iget-object v6, v6, Lmiui/cloud/a/d;->atq:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/ui/i;-><init>(Lcom/xiaomi/account/ui/h;JJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountSettingsFragment"

    const-string/jumbo v2, "getMiCloudMemberStatusInfo"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v7

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method

.method protected aO(Lcom/xiaomi/account/ui/i;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/j;->X:Lcom/xiaomi/account/ui/h;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/h;->aJ(Lcom/xiaomi/account/ui/h;Lcom/xiaomi/account/ui/j;)Lcom/xiaomi/account/ui/j;

    iget-object v0, p0, Lcom/xiaomi/account/ui/j;->X:Lcom/xiaomi/account/ui/h;

    const-string/jumbo v1, "pref_cloud_service"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/j;->X:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/h;->cT()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-wide v2, p1, Lcom/xiaomi/account/ui/i;->S:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-wide v2, p1, Lcom/xiaomi/account/ui/i;->S:J

    invoke-static {v2, v3}, Lmiui/cloud/b/a;->aHl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/xiaomi/account/ui/i;->T:J

    invoke-static {v2, v3}, Lmiui/cloud/b/a;->aHl(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%s | %s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/xiaomi/account/ui/i;->U:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/j;->aN([Ljava/lang/Void;)Lcom/xiaomi/account/ui/i;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/i;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/j;->aO(Lcom/xiaomi/account/ui/i;)V

    return-void
.end method
