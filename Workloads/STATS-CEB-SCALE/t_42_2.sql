SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND p.Score >= 52
AND u.Reputation >= 50
AND u.UpVotes >= 99
AND u.UpVotes <= 368

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;