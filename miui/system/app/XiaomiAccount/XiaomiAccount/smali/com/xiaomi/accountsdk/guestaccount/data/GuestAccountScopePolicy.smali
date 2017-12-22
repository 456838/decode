.class public final enum Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Oa:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

.field public static final enum Ob:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

.field public static final enum Oc:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

.field public static final enum Od:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    const-string/jumbo v1, "USE_MIUI_GUEST_ACCOUNT_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Od:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    const-string/jumbo v1, "USE_APP_GUEST_ACCOUNT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oc:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    const-string/jumbo v1, "TRY_MIUI_THEN_APP"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Ob:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Od:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oc:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Ob:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oa:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;->Oa:[Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountScopePolicy;

    return-object v0
.end method
