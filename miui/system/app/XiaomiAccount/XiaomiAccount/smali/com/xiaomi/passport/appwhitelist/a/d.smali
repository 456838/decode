.class public Lcom/xiaomi/passport/appwhitelist/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Kh:Lcom/xiaomi/passport/appwhitelist/a/c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public final Ki:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public final Kj:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field public final code:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;

    if-nez v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/xiaomi/passport/appwhitelist/a/d;

    iget v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->code:I

    iget v3, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->code:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    invoke-virtual {v2, v3}, Lcom/xiaomi/passport/appwhitelist/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_8
    return v0

    :cond_9
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    if-eqz v2, :cond_4

    :cond_a
    return v0

    :cond_b
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->code:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/a/c;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "AppWhiteListResponse{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", appWhiteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Kh:Lcom/xiaomi/passport/appwhitelist/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/d;->Ki:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
