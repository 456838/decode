.class public final enum Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
.super Ljava/lang/Enum;
.source "IRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/IRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum HDU_BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

.field public static final enum UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "REGISTER"

    const-string/jumbo v2, "register the device"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 43
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "KEY"

    const-string/jumbo v2, "get the provision key from the server"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 45
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "STATUS"

    const-string/jumbo v2, "query find device status and credentials"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 46
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "MESSAGE"

    const-string/jumbo v2, "query lock message"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 47
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "BIND"

    const-string/jumbo v2, "open find device"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 48
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "UNBIND"

    const-string/jumbo v2, "close find device"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 49
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "UNLOCK"

    const-string/jumbo v2, "unlock the device"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 50
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "FT"

    const-string/jumbo v2, "FT"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 52
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "UPLOAD_PHONE"

    const-string/jumbo v2, "upload the phone tickets of the device"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 53
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "UPLOAD_REGID"

    const-string/jumbo v2, "upload the push RegId"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 54
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "RECEIPT"

    const-string/jumbo v2, "reply to server commands"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 55
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "RECEIPT_BATCH"

    const-string/jumbo v2, "reply to server commands, batch version. "

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 57
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "HDU_BIND"

    const-string/jumbo v2, "bind (hardward id, device id, user id)"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->HDU_BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 59
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "TIME"

    const-string/jumbo v2, "query server time"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 61
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "LOGIN"

    const-string/jumbo v2, "report account login"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 62
    new-instance v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const-string/jumbo v1, "LOGOUT"

    const-string/jumbo v2, "report account logout"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->REGISTER:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->KEY:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->STATUS:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->MESSAGE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNBIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UNLOCK:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->FT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_PHONE:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->UPLOAD_REGID:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->RECEIPT_BATCH:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->HDU_BIND:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->TIME:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGIN:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->LOGOUT:Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->$VALUES:[Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "des"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;->$VALUES:[Lcom/xiaomi/finddevice/v2/net/IRequestManager$API;

    return-object v0
.end method
