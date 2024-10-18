SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 10
AND p.Score >= 94
AND u.Reputation >= 546
AND u.UpVotes >= 456
AND u.UpVotes <= 915

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;