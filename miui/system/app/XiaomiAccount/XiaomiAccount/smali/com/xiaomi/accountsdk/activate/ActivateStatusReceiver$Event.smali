.class public final enum Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic aaZ:[Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum aba:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum abb:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum abc:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum abd:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum abe:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field public static final enum abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_NONE"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abd:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_INSERTED"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abc:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_REMOVED"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abe:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_UNACTIVATED"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_ACTIVATING"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abb:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    new-instance v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const-string/jumbo v1, "EVENT_ACTIVATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aba:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abd:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abc:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abe:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abf:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->abb:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aba:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aaZ:[Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;->aaZ:[Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    return-object v0
.end method
