.class public Lcom/xiaomi/phonenum/bean/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private abS:Ljava/lang/String;

.field private abT:Ljava/lang/String;

.field private abU:Ljava/lang/String;

.field private abV:Z

.field private abW:Ljava/lang/String;

.field private abX:Ljava/lang/String;

.field private abY:Ljava/lang/String;

.field private abZ:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    iget v0, v0, Lcom/xiaomi/phonenum/bean/Error;->code:I

    iput v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/b;->abV:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abW:Ljava/lang/String;

    return-void
.end method

.method static synthetic alA(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alB(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alC(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alt(Lcom/xiaomi/phonenum/bean/b;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    return v0
.end method

.method static synthetic alu(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alv(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alw(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic alx(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aly(Lcom/xiaomi/phonenum/bean/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/phonenum/bean/b;->abV:Z

    return v0
.end method

.method static synthetic alz(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ali(Landroid/os/Bundle;)Lcom/xiaomi/phonenum/bean/b;
    .locals 1

    const-string/jumbo v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    const-string/jumbo v0, "errorMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abS:Ljava/lang/String;

    const-string/jumbo v0, "numberHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abX:Ljava/lang/String;

    const-string/jumbo v0, "iccid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abT:Ljava/lang/String;

    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abU:Ljava/lang/String;

    const-string/jumbo v0, "isVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/b;->abV:Z

    const-string/jumbo v0, "updateTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abW:Ljava/lang/String;

    const-string/jumbo v0, "copywriter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abY:Ljava/lang/String;

    const-string/jumbo v0, "operatorLink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->abZ:Ljava/lang/String;

    return-object p0
.end method

.method public alj(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abS:Ljava/lang/String;

    return-object p0
.end method

.method public alk(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abX:Ljava/lang/String;

    return-object p0
.end method

.method public all(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public alm(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abU:Ljava/lang/String;

    return-object p0
.end method

.method public aln(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abT:Ljava/lang/String;

    return-object p0
.end method

.method public alo(I)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    return-object p0
.end method

.method public alp(Z)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/phonenum/bean/b;->abV:Z

    return-object p0
.end method

.method public alq(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abW:Ljava/lang/String;

    return-object p0
.end method

.method public alr(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abY:Ljava/lang/String;

    return-object p0
.end method

.method public als(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/b;->abZ:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/phonenum/bean/a;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    invoke-static {v1}, Lcom/xiaomi/phonenum/bean/Error;->alD(I)Lcom/xiaomi/phonenum/bean/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/xiaomi/phonenum/bean/a;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/phonenum/bean/a;-><init>(Lcom/xiaomi/phonenum/bean/b;Lcom/xiaomi/phonenum/bean/c;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/phonenum/bean/b;->errorCode:I

    invoke-static {v1}, Lcom/xiaomi/phonenum/bean/Error;->alD(I)Lcom/xiaomi/phonenum/bean/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/b;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method
