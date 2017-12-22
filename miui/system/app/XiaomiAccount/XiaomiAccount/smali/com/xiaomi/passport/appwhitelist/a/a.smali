.class public Lcom/xiaomi/passport/appwhitelist/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final JY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md5"
    .end annotation
.end field

.field public final JZ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sha1"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/appwhitelist/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/appwhitelist/a/e;->NQ(Lcom/xiaomi/passport/appwhitelist/a/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/appwhitelist/a/e;->NP(Lcom/xiaomi/passport/appwhitelist/a/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/appwhitelist/a/e;Lcom/xiaomi/passport/appwhitelist/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/appwhitelist/a/a;-><init>(Lcom/xiaomi/passport/appwhitelist/a/e;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v2, p1, Lcom/xiaomi/passport/appwhitelist/a/a;

    if-nez v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/xiaomi/passport/appwhitelist/a/a;

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_6
    return v0

    :cond_7
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "AppSignatureHash{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sha1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", md5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/a;->JY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
