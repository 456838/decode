.class public Lcom/loc/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ala:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field final synthetic alb:Lcom/loc/aK;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/loc/aK;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/loc/z;->alb:Lcom/loc/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/z;->ala:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/z;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    iget-object v0, p0, Lcom/loc/z;->ala:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "##"

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/z;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/z;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public avL(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/z;->ala:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/z;->c:Ljava/lang/String;

    return-object v0
.end method
