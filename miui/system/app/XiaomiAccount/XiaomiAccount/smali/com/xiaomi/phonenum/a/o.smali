.class Lcom/xiaomi/phonenum/a/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private adW:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/o;->adW:Lcom/xiaomi/phonenum/utils/n;

    return-void
.end method

.method private static anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method anK(IZLcom/xiaomi/phonenum/a/g;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v3, p1}, Lcom/xiaomi/phonenum/utils/a;->alN(I)Lcom/xiaomi/phonenum/bean/d;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, "networkMccmnc"

    invoke-interface {v3, p1}, Lcom/xiaomi/phonenum/utils/a;->alP(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appId"

    iget-object v4, p3, Lcom/xiaomi/phonenum/a/g;->adA:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "needVerify"

    if-nez p2, :cond_3

    const-string/jumbo v0, "0"

    :goto_1
    invoke-static {v1, v4, v0}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "imei"

    invoke-interface {v3}, Lcom/xiaomi/phonenum/utils/a;->alM()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "phoneType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, p1}, Lcom/xiaomi/phonenum/utils/a;->alQ(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "traceId"

    invoke-static {v1, v0, v2}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "versionCode"

    const-string/jumbo v3, "2"

    invoke-static {v1, v0, v3}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/phonenum/utils/v;->amP()Lcom/xiaomi/phonenum/utils/x;
    :try_end_0
    .catch Lcom/xiaomi/phonenum/utils/FidSignUtil$FidSignException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    :goto_2
    invoke-static {v1}, Lcom/xiaomi/phonenum/utils/o;->amI(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/o;->adW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v3, "ObtainStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/o;->adW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v3, "ObtainStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "**traceId**:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SDK_INT/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " BRAND/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " PRODUCT/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " MODEL/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " INCREMENTAL/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " APP/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/xiaomi/phonenum/a/g;->adC:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "User-Agent"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/o;->adW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "ObtainStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User-Agent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v2}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    sget-object v3, Lcom/xiaomi/phonenum/e;->afo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/phonenum/c/c;->anY(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/c/c;->anZ(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    iget-object v1, p3, Lcom/xiaomi/phonenum/a/g;->adz:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/c/j;->aol()Lcom/xiaomi/phonenum/c/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetch ObtainStrategy response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v4, "iccid"

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/d;->acu:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "imsi"

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/d;->acv:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "simMccmnc"

    iget-object v5, v0, Lcom/xiaomi/phonenum/bean/d;->acw:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "line1Number"

    iget-object v0, v0, Lcom/xiaomi/phonenum/bean/d;->acx:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "1"

    goto/16 :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v0}, Lcom/xiaomi/phonenum/utils/x;->amQ()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/xiaomi/phonenum/utils/o;->amI(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/xiaomi/phonenum/utils/x;->amR([B)[B

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "fidSign"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/phonenum/a/o;->anL(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/phonenum/utils/FidSignUtil$FidSignException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/o;->adW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "ObtainStrategy"

    const-string/jumbo v5, "FidSign failed"

    invoke-interface {v3, v4, v5, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    iget v1, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    return-object v0
.end method
