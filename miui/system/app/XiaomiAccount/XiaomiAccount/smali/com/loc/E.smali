.class Lcom/loc/E;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "copy"

    iput-object v0, p0, Lcom/loc/E;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/E;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/E;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/E;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/E;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/E;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic avP(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic avQ(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic avR(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic avS(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic avT(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic avU(Lcom/loc/E;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/E;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/loc/E;
    .locals 0

    iput-object p1, p0, Lcom/loc/E;->f:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/loc/bs;
    .locals 2

    new-instance v0, Lcom/loc/bs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/bs;-><init>(Lcom/loc/E;Lcom/loc/ag;)V

    return-object v0
.end method
