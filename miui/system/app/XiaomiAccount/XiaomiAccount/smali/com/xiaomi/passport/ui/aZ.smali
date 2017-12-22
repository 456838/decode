.class final Lcom/xiaomi/passport/ui/aZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic vi:Lcom/xiaomi/passport/ui/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/LicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aZ;->vi:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aZ;->vi:Lcom/xiaomi/passport/ui/LicenseActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/LicenseActivity;->finish()V

    return-void
.end method
