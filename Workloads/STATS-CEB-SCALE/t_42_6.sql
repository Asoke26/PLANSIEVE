SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 8
AND p.Score >= 39
AND u.Reputation >= 437
AND u.UpVotes >= 87
AND u.UpVotes <= 705

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;