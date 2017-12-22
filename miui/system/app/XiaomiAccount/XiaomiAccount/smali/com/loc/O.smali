.class public Lcom/loc/O;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/lang/String;

.field private aly:[Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/cw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/O;->d:Z

    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/loc/O;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/O;->aly:[Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cw;->aFK(Lcom/loc/cw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/O;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cw;->aFL(Lcom/loc/cw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/O;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cw;->aFM(Lcom/loc/cw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/O;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cw;->aFN(Lcom/loc/cw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/O;->d:Z

    invoke-static {p1}, Lcom/loc/cw;->aFO(Lcom/loc/cw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/O;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cw;->aFP(Lcom/loc/cw;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/O;->aly:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cw;Lcom/loc/br;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/O;-><init>(Lcom/loc/cw;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/O;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/O;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/O;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/O;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/O;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/O;->d:Z

    return v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/O;->aly:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
