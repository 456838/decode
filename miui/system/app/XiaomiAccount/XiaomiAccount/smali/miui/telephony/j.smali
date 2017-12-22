.class final Lmiui/telephony/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final aui:I

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/telephony/j;->aui:I

    iput-object p2, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aIp()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/telephony/j;->aui:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/j;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    check-cast p1, Lmiui/telephony/j;

    iget v0, p0, Lmiui/telephony/j;->aui:I

    iget v1, p1, Lmiui/telephony/j;->aui:I

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    iget-object v1, p1, Lmiui/telephony/j;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    return v3

    :cond_5
    iget-object v0, p1, Lmiui/telephony/j;->value:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lmiui/telephony/j;->aui:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/j;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmiui/telephony/j;->aIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
