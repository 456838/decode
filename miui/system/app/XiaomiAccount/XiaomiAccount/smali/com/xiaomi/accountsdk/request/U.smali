.class Lcom/xiaomi/accountsdk/request/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/request/F;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/request/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/U;-><init>()V

    return-void
.end method


# virtual methods
.method public agj(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
