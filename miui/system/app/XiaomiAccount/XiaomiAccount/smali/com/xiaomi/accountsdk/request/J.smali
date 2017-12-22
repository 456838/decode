.class Lcom/xiaomi/accountsdk/request/J;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final YR:Ljava/lang/String;

.field final host:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/xiaomi/accountsdk/request/J;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/xiaomi/accountsdk/request/J;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null#null"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/J;->YR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
