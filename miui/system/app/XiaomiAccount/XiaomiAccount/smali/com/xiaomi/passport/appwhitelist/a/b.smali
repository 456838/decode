.class public Lcom/xiaomi/passport/appwhitelist/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Ka:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passtoken"
    .end annotation
.end field

.field public final Kb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createTime"
    .end annotation
.end field

.field public final Kc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packageName"
    .end annotation
.end field

.field public final Kd:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sids"
    .end annotation
.end field

.field public final Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field public final Kf:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/passport/appwhitelist/a/b;

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaomi/passport/appwhitelist/a/b;

    iget-boolean v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ka:Z

    iget-boolean v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Ka:Z

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    iget-object v1, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_7
    iget-object v0, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_8
    return v2

    :cond_9
    iget-object v0, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_a
    return v2

    :cond_b
    iget-object v0, p1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_c
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ka:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "AppWhiteListEntry{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "sids="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", createTime=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", updateTime=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", packageName=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", allowGetPasstoken="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ka:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", signatureHashes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
