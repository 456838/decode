.class final Lcom/xiaomi/account/ui/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic er:Lcom/xiaomi/account/ui/c;

.field final synthetic es:I


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    iput p2, p0, Lcom/xiaomi/account/ui/Z;->es:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->N(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    invoke-static {v1}, Lcom/xiaomi/account/ui/c;->N(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/account/ui/Z;->es:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/Z;->er:Lcom/xiaomi/account/ui/c;

    iget-object v1, v1, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_education"

    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/account/ui/Z;->es:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
