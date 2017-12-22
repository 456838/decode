.class public Lcom/xiaomi/phonenum/bean/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final abK:Ljava/lang/String;

.field public final abL:Ljava/lang/String;

.field public final abM:Ljava/lang/String;

.field public final abN:Ljava/lang/String;

.field public final abO:Z

.field public final abP:Ljava/lang/String;

.field public final abQ:Ljava/lang/String;

.field public final abR:Ljava/lang/String;

.field public final errorCode:I

.field public final errorMsg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/bean/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alt(Lcom/xiaomi/phonenum/bean/b;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alu(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alv(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abM:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alw(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abN:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alx(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->errorMsg:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->aly(Lcom/xiaomi/phonenum/bean/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/a;->abO:Z

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alz(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abP:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alA(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abL:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alB(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abQ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/b;->alC(Lcom/xiaomi/phonenum/bean/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/a;->abR:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/bean/b;Lcom/xiaomi/phonenum/bean/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/bean/a;-><init>(Lcom/xiaomi/phonenum/bean/b;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "errorCode"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "errorMsg"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/a;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/a;->abK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
