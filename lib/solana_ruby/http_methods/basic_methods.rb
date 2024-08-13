# frozen_string_literal: true

require 'pry'
require 'base58'

module SolanaRuby
  module HttpMethods
    module BasicMethods

      def get_balance(pubkey)
        balance_info = request("getBalance", [pubkey])
        balance_info["result"]["value"]
      end

      def get_balance_and_context(pubkey)
        balance_info = request("getBalance", [pubkey])
        balance_info["result"]
      end

      def get_account_info(pubkey)
        account_info = request("getAccountInfo", [pubkey])
        account_info["result"]["value"]
      end

      def get_account_info_and_context(pubkey)
        account_info = request("getAccountInfo", [pubkey])
        account_info["result"]
      end

      def get_slot
        slot_info = request("getSlot")
        slot_info['result']
      end
    end
  end
end
