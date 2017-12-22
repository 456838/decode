.class Lcom/xiaomi/account/ui/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/z;


# instance fields
.field final synthetic z:Lcom/xiaomi/account/ui/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/ui/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/d;-><init>(Lcom/xiaomi/account/ui/c;)V

    return-void
.end method


# virtual methods
.method public ab(Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->R(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    iget-object v0, v0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_name"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/xiaomi/account/utils/p;->om()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-static {v2}, Lcom/xiaomi/account/ui/c;->M(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    iget-object v2, v2, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "acc_user_birthday"

    invoke-virtual {v1, v2, v3, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->O(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

    if-ne p3, v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/d;->z:Lcom/xiaomi/account/ui/c;

    iget-object v0, v0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_gender"

    invoke-virtual {p3}, Lcom/xiaomi/accountsdk/account/data/Gender;->Vp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
