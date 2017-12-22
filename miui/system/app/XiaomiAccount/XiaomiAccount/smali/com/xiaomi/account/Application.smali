.class public Lcom/xiaomi/account/Application;
.super Lmiui/external/Application;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public qN()Lmiui/external/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/account/d;

    invoke-direct {v0}, Lcom/xiaomi/account/d;-><init>()V

    return-object v0
.end method
