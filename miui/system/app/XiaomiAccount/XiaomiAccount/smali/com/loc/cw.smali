.class public Lcom/loc/cw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private asq:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cw;->d:Z

    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/loc/cw;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cw;->asq:[Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/cw;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic aFK(Lcom/loc/cw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aFL(Lcom/loc/cw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aFM(Lcom/loc/cw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aFN(Lcom/loc/cw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/cw;->d:Z

    return v0
.end method

.method static synthetic aFO(Lcom/loc/cw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aFP(Lcom/loc/cw;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->asq:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/loc/O;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cw;->asq:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/O;

    invoke-direct {v0, p0, v1}, Lcom/loc/O;-><init>(Lcom/loc/cw;Lcom/loc/br;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/loc/cw;
    .locals 0

    iput-object p1, p0, Lcom/loc/cw;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/loc/cw;
    .locals 0

    iput-boolean p1, p0, Lcom/loc/cw;->d:Z

    return-object p0
.end method

.method public aFJ([Ljava/lang/String;)Lcom/loc/cw;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cw;->asq:[Ljava/lang/String;

    return-object p0
.end method
