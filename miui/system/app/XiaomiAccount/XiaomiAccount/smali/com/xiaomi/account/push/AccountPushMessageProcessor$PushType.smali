.class final enum Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum nt:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

.field private static final synthetic nu:[Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    const-string/jumbo v1, "TICKET"

    const-string/jumbo v2, "ticket"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nt:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    sget-object v1, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nt:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nu:[Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;
    .locals 1

    const-class v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nu:[Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->value:Ljava/lang/String;

    return-object v0
.end method
