.class public Lcom/loc/bs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/loc/E;->avP(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/E;->avQ(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/E;->avR(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/E;->avS(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/E;->avT(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/E;->avU(Lcom/loc/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bs;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/E;Lcom/loc/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bs;-><init>(Lcom/loc/E;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bs;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bs;->f:Ljava/lang/String;

    return-object v0
.end method
