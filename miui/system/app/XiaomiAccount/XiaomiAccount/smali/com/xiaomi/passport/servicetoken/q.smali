.class Lcom/xiaomi/passport/servicetoken/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile Iv:Ljava/lang/Boolean;

.field private static volatile Iw:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static MP()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->aht(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/xiaomi/accountsdk/utils/o;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/o;->ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->ahs(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/xiaomi/accountsdk/utils/n;

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/n;-><init>(III)V

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/n;->ahV(Lcom/xiaomi/accountsdk/utils/n;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static MQ()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->aht(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/xiaomi/accountsdk/utils/o;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/o;->ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/xiaomi/passport/servicetoken/q;->Iw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/g;->ahs(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/xiaomi/accountsdk/utils/n;

    const/4 v3, 0x6

    const/16 v4, 0xb

    const/16 v5, 0x19

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/n;-><init>(III)V

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/n;->ahV(Lcom/xiaomi/accountsdk/utils/n;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
