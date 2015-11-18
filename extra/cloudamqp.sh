#!/bin/sh
# Add an alias of CLOUDAMQP_URL to AMQP_URL.
echo "-----> Adding CLOUDAMQP_URL -> AMQP_URL env"
cat > "$APP_CHECKOUT_DIR"/.profile.d/cloudamqp.sh <<EOF
  #!/bin/sh
  # Set AMQP_URL to CLOUDAMQP_URL if it's not already set
  if [ -z \$AMQP_URL ] ; then
    export AMQP_URL=\$CLOUDAMQP_URL
  fi
EOF
