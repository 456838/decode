.class public Lcom/xiaomi/passport/uicontroller/T;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private JR:Landroid/content/Context;

.field private JS:Lcom/xiaomi/passport/uicontroller/S;

.field private JT:Lcom/xiaomi/passport/uicontroller/U;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public NH(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/T;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/T;->JR:Landroid/content/Context;

    return-object p0
.end method

.method public NI(Lcom/xiaomi/passport/uicontroller/S;)Lcom/xiaomi/passport/uicontroller/T;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/T;->JS:Lcom/xiaomi/passport/uicontroller/S;

    return-object p0
.end method

.method public NJ(Lcom/xiaomi/passport/uicontroller/U;)Lcom/xiaomi/passport/uicontroller/T;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/T;->JT:Lcom/xiaomi/passport/uicontroller/U;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/uicontroller/R;
    .locals 6

    new-instance v0, Lcom/xiaomi/passport/uicontroller/R;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/T;->JR:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/T;->JS:Lcom/xiaomi/passport/uicontroller/S;

    iget-object v2, v2, Lcom/xiaomi/passport/uicontroller/S;->notificationUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/uicontroller/T;->JS:Lcom/xiaomi/passport/uicontroller/S;

    iget-boolean v3, v3, Lcom/xiaomi/passport/uicontroller/S;->JQ:Z

    iget-object v4, p0, Lcom/xiaomi/passport/uicontroller/T;->JT:Lcom/xiaomi/passport/uicontroller/U;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/uicontroller/R;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/xiaomi/passport/uicontroller/U;Lcom/xiaomi/passport/uicontroller/R;)V

    return-object v0
.end method
