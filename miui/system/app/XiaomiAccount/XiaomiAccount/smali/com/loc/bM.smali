.class public Lcom/loc/bM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private arv:Z

.field private arw:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/bM;->arv:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/bM;->arv:Z

    return v0
.end method

.method public aEM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/bM;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/bM;->arw:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/bM;->arw:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/bM;->c:Z

    return v0
.end method
