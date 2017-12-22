.class public Lcom/xiaomi/account/ui/SnsAddAccountActivity;
.super Lmiui/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method public static ii(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/SnsAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ":miui:starting_window_label"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_1
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const v0, 0x7f1000b3

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->lZ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/account/ui/cq;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/account/ui/cq;-><init>(Lcom/xiaomi/account/ui/SnsAddAccountActivity;Lcom/xiaomi/account/data/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->me()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SnsAddAccountActivity"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->finish()V

    return-void

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->op(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
