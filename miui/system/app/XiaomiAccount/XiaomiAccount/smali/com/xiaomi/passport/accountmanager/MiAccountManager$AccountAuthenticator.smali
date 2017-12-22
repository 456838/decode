.class public final enum Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic zv:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

.field public static final enum zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

.field public static final enum zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    const-string/jumbo v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    new-instance v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zw:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zx:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zv:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->zv:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    return-object v0
.end method
