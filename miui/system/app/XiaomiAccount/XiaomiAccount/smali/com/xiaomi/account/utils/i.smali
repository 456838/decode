.class public Lcom/xiaomi/account/utils/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic lU:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nS(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/account/utils/n;->oh(Landroid/content/Context;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ma:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-static {p0, v0}, Lcom/xiaomi/account/utils/i;->nT(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V

    return-void

    :cond_0
    const-string/jumbo v0, "MiuiNetworkPolicyContro"

    const-string/jumbo v1, "hidden mode check passed."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/account/utils/m;->og(Landroid/content/Context;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lZ:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-static {p0, v0}, Lcom/xiaomi/account/utils/i;->nT(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V

    return-void

    :cond_1
    const-string/jumbo v0, "MiuiNetworkPolicyContro"

    const-string/jumbo v1, "Background network restrict check passed."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/account/utils/l;->of(Landroid/content/Context;)Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;->lW:Lcom/xiaomi/account/utils/NetworkPolicyUtils$CheckResult;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->mb:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-static {p0, v0}, Lcom/xiaomi/account/utils/i;->nT(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V

    return-void

    :cond_2
    const-string/jumbo v0, "MiuiNetworkPolicyContro"

    const-string/jumbo v1, "mobile network restrict check passed."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static nT(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/xiaomi/account/utils/j;->nX(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MiuiNetworkPolicyContro"

    const-string/jumbo v1, "notified, bail"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/account/utils/i;->nU(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0c0171

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaomi/account/utils/i;->nV(Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1}, Lcom/xiaomi/account/utils/j;->nZ(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)V

    return-void
.end method

.method private static nU(Landroid/content/Context;Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/xiaomi/account/utils/i;->nW()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.HIDDEN_APPS_CONFIG_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_SORTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static nV(Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;)I
    .locals 2

    invoke-static {}, Lcom/xiaomi/account/utils/i;->nW()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f0c0172

    return v0

    :pswitch_1
    const v0, 0x7f0c0173

    return v0

    :pswitch_2
    const v0, 0x7f0c0174

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic nW()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/utils/i;->lU:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/utils/i;->lU:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->values()[Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->lZ:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-virtual {v1}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ma:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-virtual {v1}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->mb:Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;

    invoke-virtual {v1}, Lcom/xiaomi/account/utils/NetworkPolicyUtils$RestrictType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/xiaomi/account/utils/i;->lU:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
