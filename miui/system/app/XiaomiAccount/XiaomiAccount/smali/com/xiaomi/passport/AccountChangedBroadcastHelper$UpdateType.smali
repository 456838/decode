.class public final enum Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Lf:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum Lg:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum Lh:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum Li:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum Lj:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum Lk:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string/jumbo v1, "PRE_ADD"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lj:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string/jumbo v1, "POST_ADD"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lg:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string/jumbo v1, "POST_REFRESH"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lh:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string/jumbo v1, "PRE_REMOVE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lk:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string/jumbo v1, "POST_REMOVE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Li:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lj:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lg:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lh:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lk:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Li:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lf:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->Lf:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    return-object v0
.end method
