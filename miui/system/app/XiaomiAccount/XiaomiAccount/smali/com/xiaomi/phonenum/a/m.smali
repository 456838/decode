.class Lcom/xiaomi/phonenum/a/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private adM:Lcom/xiaomi/phonenum/utils/n;

.field private adN:Lcom/xiaomi/phonenum/a/g;

.field private adO:Lorg/json/JSONArray;

.field final adP:Lorg/json/JSONObject;

.field final adQ:J

.field adR:J

.field adS:J

.field adT:J


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/xiaomi/phonenum/a/g;)V
    .locals 6

    const-wide/16 v4, 0x1388

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/m;->adM:Lcom/xiaomi/phonenum/utils/n;

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/m;->adN:Lcom/xiaomi/phonenum/a/g;

    const-string/jumbo v0, "methods"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/m;->adO:Lorg/json/JSONArray;

    const-string/jumbo v0, "inNetTimeMethod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/m;->adP:Lorg/json/JSONObject;

    const-string/jumbo v0, "waitService"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/phonenum/a/m;->adQ:J

    const-string/jumbo v0, "verifyExpireTime"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/phonenum/a/m;->adR:J

    const-string/jumbo v0, "waitCellular"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/phonenum/a/m;->adS:J

    const-string/jumbo v0, "connectTimeout"

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/phonenum/a/m;->adT:J

    return-void
.end method

.method private anA(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/r;
    .locals 10

    const-string/jumbo v0, "serverMethod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v0, "times"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "waitTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string/jumbo v0, "followup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/xiaomi/phonenum/a/r;

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/phonenum/a/r;-><init>(Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private anB(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/e;
    .locals 4

    const-string/jumbo v0, "serverMethod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "followup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/m;->adN:Lcom/xiaomi/phonenum/a/g;

    invoke-virtual {v3, v2}, Lcom/xiaomi/phonenum/a/g;->anu(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/c/h;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/phonenum/a/e;

    invoke-direct {v3, v0, v2, v1}, Lcom/xiaomi/phonenum/a/e;-><init>(Ljava/lang/String;Lcom/xiaomi/phonenum/c/h;Ljava/lang/String;)V

    return-object v3
.end method

.method private anC(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/j;
    .locals 3

    const-string/jumbo v0, "serverMethod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "followup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/phonenum/a/j;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/phonenum/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic anD(Lcom/xiaomi/phonenum/a/m;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/m;->adO:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic anE(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/r;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/a/m;->anA(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic anF(Lcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/a/g;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/m;->adN:Lcom/xiaomi/phonenum/a/g;

    return-object v0
.end method

.method static synthetic anG(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/e;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/a/m;->anB(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic anH(Lcom/xiaomi/phonenum/a/m;Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/j;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/a/m;->anC(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/a/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method anz(Lcom/xiaomi/phonenum/a/t;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/phonenum/a/t;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/xiaomi/phonenum/a/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/phonenum/a/u;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/phonenum/a/u;-><init>(Lcom/xiaomi/phonenum/a/m;Lcom/xiaomi/phonenum/a/t;)V

    return-object v0
.end method
